@Mod.EventBusSubscriber public class ${name}Procedure  {
	@SubscribeEvent public static void onItemCrafted(PlayerEvent.ItemCraftedEvent event) {
		Entity entity = event.getPlayer();
		Map<String, Object> dependencies = new HashMap<>();
		dependencies.put("x", entity.getX());
		dependencies.put("y", entity.getY());
		dependencies.put("z", entity.getZ());
		dependencies.put("world",entity.level);
		dependencies.put("entity",event.getPlayer());
		dependencies.put("itemstack",event.getCrafting());
		dependencies.put("event",event);
		execute(dependencies);
	}