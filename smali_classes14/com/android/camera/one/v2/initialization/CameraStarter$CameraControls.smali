.class public Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
.super Ljava/lang/Object;
.source "CameraStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/initialization/CameraStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraControls"
.end annotation


# instance fields
.field private final mBokehResultProvider:Lcom/android/camera/one/v2/photo/BokehResultProvider;

.field private final mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

.field private final mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

.field private final mSceneRecognitionProvider:Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/photo/PictureTaker;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Lcom/android/camera/one/v2/photo/SceneDetector;Lcom/android/camera/one/v2/photo/FlashDetector;Lcom/android/camera/one/v2/photo/BokehResultProvider;Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;)V
    .locals 0
    .param p1, "pictureTaker"    # Lcom/android/camera/one/v2/photo/PictureTaker;
    .param p2, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p3, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p4, "flashDetector"    # Lcom/android/camera/one/v2/photo/FlashDetector;
    .param p5, "bokehResultProvider"    # Lcom/android/camera/one/v2/photo/BokehResultProvider;
    .param p6, "sceneRecognitionProvider"    # Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    .line 60
    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 61
    iput-object p3, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 62
    iput-object p4, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    .line 63
    iput-object p5, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mBokehResultProvider:Lcom/android/camera/one/v2/photo/BokehResultProvider;

    .line 64
    iput-object p6, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mSceneRecognitionProvider:Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

    .line 65
    return-void
.end method


# virtual methods
.method public getBokehResultProvider()Lcom/android/camera/one/v2/photo/BokehResultProvider;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mBokehResultProvider:Lcom/android/camera/one/v2/photo/BokehResultProvider;

    return-object v0
.end method

.method public getFlashDetector()Lcom/android/camera/one/v2/photo/FlashDetector;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mFlashDetector:Lcom/android/camera/one/v2/photo/FlashDetector;

    return-object v0
.end method

.method public getManualAutoFocus()Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    return-object v0
.end method

.method public getPictureTaker()Lcom/android/camera/one/v2/photo/PictureTaker;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mPictureTaker:Lcom/android/camera/one/v2/photo/PictureTaker;

    return-object v0
.end method

.method public getSceneDetector()Lcom/android/camera/one/v2/photo/SceneDetector;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    return-object v0
.end method

.method public getSceneRecognitionProvider()Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;->mSceneRecognitionProvider:Lcom/android/camera/one/v2/photo/SceneRecognitionProvider;

    return-object v0
.end method
