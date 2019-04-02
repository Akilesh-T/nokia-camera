.class Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidCameraDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;


# instance fields
.field private final mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

.field private final mDualCamBackId:I

.field private final mFirstBackCameraId:I

.field private final mFirstFrontCameraId:I

.field private final mNumberOfCameras:I

.field private final mSecondBackCameraId:I


# direct methods
.method private constructor <init>([Landroid/hardware/Camera$CameraInfo;IIIII)V
    .locals 0
    .param p1, "info"    # [Landroid/hardware/Camera$CameraInfo;
    .param p2, "numberOfCameras"    # I
    .param p3, "firstBackCameraId"    # I
    .param p4, "firstFrontCameraId"    # I
    .param p5, "secondBackCameraId"    # I
    .param p6, "dualCamBackId"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    .line 158
    iput p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mNumberOfCameras:I

    .line 159
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstBackCameraId:I

    .line 160
    iput p4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstFrontCameraId:I

    .line 161
    iput p5, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mSecondBackCameraId:I

    .line 162
    iput p6, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mDualCamBackId:I

    .line 163
    return-void
.end method

.method public static create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
    .locals 10

    .prologue
    .line 166
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->sInstance:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->sInstance:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    .line 225
    .local v2, "numberOfCameras":I
    :goto_0
    return-object v0

    .line 170
    .end local v2    # "numberOfCameras":I
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 171
    .restart local v2    # "numberOfCameras":I
    new-array v1, v2, [Landroid/hardware/Camera$CameraInfo;

    .line 172
    .local v1, "cameraInfos":[Landroid/hardware/Camera$CameraInfo;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v2, :cond_1

    .line 173
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v0, v1, v9

    .line 174
    aget-object v0, v1, v9

    invoke-static {v9, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 176
    .end local v1    # "cameraInfos":[Landroid/hardware/Camera$CameraInfo;
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 177
    .local v8, "ex":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v0

    const-string v3, "Exception while creating CameraDeviceInfo"

    invoke-static {v0, v3, v8}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "cameraInfos":[Landroid/hardware/Camera$CameraInfo;
    .restart local v9    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/ex/camera2/portability/extension/CameraInfoExtensionCreator;->create()Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;

    move-result-object v7

    .line 183
    .local v7, "cameraInfoExtension":Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;
    invoke-virtual {v7, v2, v1}, Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;->init(I[Landroid/hardware/Camera$CameraInfo;)V

    .line 224
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;->getFirstBackCameraId()I

    move-result v3

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;->getFirstFrontCameraId()I

    move-result v4

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;->getSlaveBackCameraId()I

    move-result v5

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/extension/CameraInfoExtension;->getDualCameraId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;-><init>([Landroid/hardware/Camera$CameraInfo;IIIII)V

    sput-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->sInstance:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    .line 225
    sget-object v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->sInstance:Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    goto :goto_0
.end method


# virtual methods
.method public getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v1, p1

    .line 231
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;

    invoke-direct {v1, v0}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;-><init>(Landroid/hardware/Camera$CameraInfo;)V

    .line 234
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDaulCameraBackId()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mDualCamBackId:I

    return v0
.end method

.method public getFirstBackCameraId()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstBackCameraId:I

    return v0
.end method

.method public getFirstFrontCameraId()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mNumberOfCameras:I

    return v0
.end method

.method public getSecondBackCameraId()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mSecondBackCameraId:I

    return v0
.end method
