##csv�̓ǂݍ���
sim <- read.csv("sim2.csv")
##�����s��ɕϊ�
dd <- as.dist(sim)
##�N���X�^�����O�i�E�H�[�h�@�j
clust <- hclust(dd,method="ward.D")
##�N���X�^�ԍ��̊��蓖�āi�N���X��=4�j
classNUM <- cutree(clust,k=4)

##�e�N���X�^�̗v�f���N���X�^�ԍ��Ŏ擾
vec1 <- which (classNUM==1)
vec2 <- which (classNUM==2)
vec3 <- which (classNUM==3)
vec4 <- which (classNUM==4)

##�N���X�^�����O���ʂ��f���h���O�����ŕ\��
plot(clust,hang=-1,main="�E�H�[�h�@")


##���ʂ̏o��
sink("output.txt")
print("vec1")
vec1
print("vec2")
vec2
print("vec3")
vec3
print("vec4")
vec4
sink()



##�N���X�^�����O��@�̑I��
average:�Q���ϖ@
centroid:�d�S�@
median:���f�B�A���@
ward.D:�E�H�[�h�@