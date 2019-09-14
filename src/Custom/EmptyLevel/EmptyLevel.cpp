/*
 * Copyright (c) 2018 Isetta
 */
#include "EmptyLevel.h"

#include "Core/IsettaCore.h"
#include "Graphics/CameraComponent.h"
#include "Core/Config/Config.h"
#include "Components/Editor/EditorComponent.h"
#include "Core/Math/Vector3.h"
#include "Graphics/AnimationComponent.h"
#include "Components/FlyController.h"
#include "Graphics/MeshComponent.h"
#include "Components/FlyController.h"
#include "Components/GridComponent.h"
#include "Graphics/LightComponent.h"
#include "Graphics/Texture.h"
#include "Scene/Entity.h"
#include "Components/Editor/NetworkMonitor.h"

namespace Isetta {
using LightProperty = LightComponent::Property;
using CameraProperty = CameraComponent::Property;

void EmptyLevel::Load() {

  Entity* camera = Entity::Instantiate("Camera");
  auto camComp = camera->AddComponent<CameraComponent>();
  camera->transform->SetWorldPos({15, 15, 30});
  camera->transform->LookAt(Math::Vector3::zero);
  camera->AddComponent<FlyController>();
  camComp->SetProperty<CameraProperty::FOV>(50);
  camComp->SetProperty<CameraProperty::FAR_PLANE>(1000);
  camComp->SetProperty<CameraProperty::NEAR_PLANE>(0.1f);



	  Entity* lightEntity = Entity::Instantiate("Light");
	  auto light = lightEntity->AddComponent<LightComponent>("lights/light.material.xml");
	  lightEntity->SetTransform(Math::Vector3{0, 200, 600}, Math::Vector3{0, 0, 0}, Math::Vector3::one);
	  light->SetProperty<LightComponent::Property::FOV>(180);
	  light->SetProperty<LightComponent::Property::RADIUS>(2500);
	  light->SetProperty<LightComponent::Property::COLOR_MULTIPLIER>(5.0f);
	  light->SetProperty<LightComponent::Property::COLOR>(Color::white);
	  light->SetProperty<LightComponent::Property::SHADOW_MAP_COUNT>(1);
	  light->SetProperty<LightComponent::Property::SHADOW_MAP_BIAS>(0.01f);

    Entity* grid = Entity::Instantiate("Grid");
      grid->AddComponent<GridComponent>();


    Entity* player = Entity::Instantiate("Player");
    player->transform->SetWorldPos(Math::Vector3{0,5,10});
    player->transform->SetLocalScale(Math::Vector3::one * 0.1f);


    auto playerMesh = player->AddComponent<MeshComponent>("push/Pushing.scene.xml");
    auto ani = player->AddComponent<AnimationComponent>( playerMesh);
    ani->AddAnimation("push/Pushing.anim");

    Entity* pussy = Entity::Instantiate("pussy");
    player->transform->SetWorldPos(Math::Vector3{0,5,10});
    MeshComponent* pussyMesh = pussy->AddComponent<MeshComponent>( "push/Pushing.scene.xml");
    AnimationComponent* anim = pussy->AddComponent<AnimationComponent>( pussyMesh);
    anim->AddAnimation("push/Pushing.anim");

    Entity* editor = Entity::Instantiate("Editor");
      editor->AddComponent<EditorComponent>();

    Entity* monitor = Entity::Instantiate("monitor");
    monitor->AddComponent<NetworkMonitor>();



}
}  // namespace Isetta
