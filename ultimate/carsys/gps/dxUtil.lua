-- #######################################
-- ## Name: 	dxMoveable			    ##
-- ## Author:	Stivik					##
-- #######################################

dxMoveable = {
	elements = {}
}
function dxMoveable:createMoveable (w, h, b)
	local self = setmetatable({
		renderTarget = dxCreateRenderTarget(w, h, b),
		posX = 0,
		posY = 0,
		w = w,
		h = h,
		cursorOffX = 0,
		cursorOffY = 0,
		alpha = 100
	}, {
		__index = self
	})
	
	if not dxMoveable.renderFunc then
		dxMoveable.renderFunc = bind(dxMoveable.render, dxMoveable)
		addEventHandler("onClientRender", root, dxMoveable.renderFunc)
	end
	
	table.insert(dxMoveable.elements, 1, self)
	
	return self;
end

function dxMoveable:destroyElement ()
	if isElement(self.renderTarget) then
		dxSetRenderTarget(self.renderTarget, true)
			-- Clear it.
		dxSetRenderTarget()
		
		destroyElement(self.renderTarget)
	end

	if table.find(dxMoveable.elements, self) then 
		table.remove(dxMoveable.elements, table.find(dxMoveable.elements, self))
	end
	
	if table.getn(dxMoveable.elements) == 0 then
		removeEventHandler("onClientRender", root, dxMoveable.renderFunc)
		dxMoveable.renderFunc = nil
	end
end

function dxMoveable:render ()
	if Cursor.active then
		local currElement = nil
		for i, v in ipairs(self.elements or {}) do
			if isCursorOverRectangle(v.posX, v.posY, v.w , v.h) then
				--error("YEAH")
				currElement = v
				break;
			end
		end
		

		currElement = Cursor.currElement or currElement
		
		if currElement then
			if Cursor.currElement == currElement then
				currElement.alpha = 150
				currElement.posX, currElement.posY = Cursor.newX + currElement.cursorOffX, Cursor.newY + currElement.cursorOffY
			else
				if currElement.alpha == 150 then
					currElement.alpha = 100
				end
			end
			
			if not ((currElement.posX >= 0) and (currElement.posX <= (screenW - currElement.w)) and (currElement.posY >= 0) and (currElement.posY <= (screenH - currElement.h))) then
				dxDrawRectangle(currElement.posX - 10, currElement.posY - 10, currElement.w + 20, currElement.h + 20, tocolor(125, 0, 0, currElement.alpha))
			elseif not ((currElement.posX - 10 >= 0) and (currElement.posX + 10 <= (screenW - currElement.w)) and (currElement.posY - 10 >= 0) and (currElement.posY + 10 <= (screenH - currElement.h))) then
				dxDrawRectangle(currElement.posX - 10, currElement.posY - 10, currElement.w + 20, currElement.h + 20, tocolor(254, 138, 0, currElement.alpha))
			else
				dxDrawRectangle(currElement.posX - 10, currElement.posY - 10, currElement.w + 20, currElement.h + 20, tocolor(255, 255, 255, currElement.alpha))
			end
		end
	end
end