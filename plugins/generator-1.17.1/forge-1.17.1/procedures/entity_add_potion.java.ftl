if(${input$entity} instanceof LivingEntity _entity)
	_entity.addEffect(new MobEffectInstance(${generator.map(field$potion, "effects")},(int) ${input$duration},(int) ${input$level}));