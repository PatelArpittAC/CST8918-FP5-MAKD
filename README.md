## Title
CST8918 Infrastructure Project (FP5)

## Team Members
| | Name | Username | Link to GitHub Profile |
| ----------- | ----------- | ----------- | ----------- |
| - | Arpit Patel | `pate1096` | [PatelArpittAC](https://github.com/PatelArpittAC/) |
| - | Devansh Sheth | `shet0028` | [DevanshSheth9401](https://github.com/DevanshSheth9401) |
| - | Kalpitkumar Parekh | `pare0254` | [KalpitAlgonquin09](https://github.com/KalpitAlgonquin09) |
| - | Meet Dewani | `dewa0117` | [MeetAlgonquin](https://github.com/MeetAlgonquin) |

## Instructions
- ...

az acr login --name weatherappacr5

docker tag cst8918w24a03weatherpulumi weatherappacr5.azurecr.io/cst8918w24a03weatherpulumi:latest

nslookup weatherappacr5.azurecr.io

docker push weatherappacr5.azurecr.io/cst8918w24a03weatherpulumi:latest

kubectl get service wather-app-service