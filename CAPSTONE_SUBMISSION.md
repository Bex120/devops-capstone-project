# DevOps Capstone Submission Index

Repository: https://github.com/Bex120/devops-capstone-project

This file maps each grading item to its final evidence. Links to code are
ready. Runtime outputs and Kanban screenshots must be captured from the live
GitHub/OpenShift environments and must not be replaced with sample data.

| Task | Evidence |
|---:|---|
| 1 | [README.md](README.md) with project name and CI badge |
| 2 | [.github/ISSUE_TEMPLATE/user-story.md](.github/ISSUE_TEMPLATE/user-story.md) |
| 3–6 | `planning-userstories-done.png`, `planning-productbacklog-done.png`, `planning-labels-done.png`, `planning-kanban-done.png` |
| 7 | [setup.cfg](setup.cfg) |
| 8–12 | `rest-techdebt-done.png`, `read-accounts.png`, `list-accounts.png`, `update-accounts.png`, `delete-accounts.png` |
| 13–17 | `evidence/rest-create-done.txt`, `rest-list-done.txt`, `rest-read-done.txt`, `rest-update-done.txt`, `rest-delete-done.txt` |
| 18 | `sprint2-plan.png` |
| 19 | `evidence/ci-workflow-done.txt` |
| 20 | `ci-kanban-done.png` |
| 21 | [.github/workflows/ci-build.yaml](.github/workflows/ci-build.yaml) |
| 22 | [service/__init__.py](service/__init__.py) |
| 23 | `evidence/security-headers-done.txt` |
| 24 | `security-kanban-done.png` |
| 25 | `sprint3-plan.png` |
| 26 | `evidence/kube-app-output.txt` |
| 27–28 | `kube-docker-done.png`, `kube-kubernetes-done.png` |
| 29 | [Dockerfile](Dockerfile) |
| 30 | `evidence/kube-images.txt` |
| 31 | `evidence/kube-deploy-accounts.txt` |
| 32 | `evidence/pipelinerun.txt` |
| 33 | `cd-pipeline-done.png` |

## Final capture commands

Run these in the IBM Skills Network OpenShift lab after replacing the image
name and GitHub account values as instructed by the course:

```bash
nosetests -v --with-spec --spec-color --with-coverage | tee evidence/security-headers-done.txt
docker images accounts | tee evidence/kube-images.txt
oc get deployment,pods,replicaset,service -l app=accounts -o wide | tee evidence/kube-deploy-accounts.txt
tkn pipelinerun logs --last -f | tee evidence/pipelinerun.txt
```

Verify every screenshot shows the required story title, column, sprint,
estimate, and label before submission.
