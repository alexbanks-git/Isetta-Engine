
#include "EditorLevel.h"

#include "Core/Config/Config.h"
#include "Core/IsettaCore.h"
#include "Graphics/CameraComponent.h"
#include "Core/Math/Vector3.h"
#include "Components/FlyController.h"
#include "Components/Editor/EditorComponent.h"

#include "Scene/Primitive.h"

namespace Isetta {
using LightProperty = LightComponent::Property;
using CameraProperty = CameraComponent::Property;
void EditorLevel::Load() {
	Entity* camera = Entity::Instantiate("Camera");
	  auto camComp = camera->AddComponent<CameraComponent>();
	  camera->transform->SetWorldPos({15, 15, 30});
	  camera->transform->LookAt(Math::Vector3::zero);
	  camera->AddComponent<FlyController>();
	  camComp->SetProperty<CameraProperty::FOV>(50);
	  camComp->SetProperty<CameraProperty::FAR_PLANE>(1000);
	  camComp->SetProperty<CameraProperty::NEAR_PLANE>(0.1f);

  Entity* editor = Entity::Instantiate("Editor");
  editor->AddComponent<EditorComponent>();
  // editor->AddComponent<Console>("Console", true);
  // Inspector* inspector = editor->AddComponent<Inspector>("Inspector", false);
  // editor->AddComponent<Hierarchy>("Hierarchy", true, inspector);

  Primitive::Create(Primitive::Type::Cube);
  Primitive::Create(Primitive::Type::Cube);
}
}  // namespace Isetta

