<#include "mcitems.ftl">
if(${input$entity} instanceof LivingEntity _entity) {
	ItemStack _setstack = ${mappedMCItemToItemStackCode(input$item, 1)};
	_setstack.setCount((int) ${input$amount});
	_entity.setItemInHand(InteractionHand.OFF_HAND, _setstack);
	if (_entity instanceof ServerPlayer _serverPlayer) _serverPlayer.getInventory().setChanged();
}