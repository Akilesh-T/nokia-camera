.class Lcom/android/camera/PanoramaUIMTK$1;
.super Ljava/lang/Object;
.source "PanoramaUIMTK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaUIMTK;->showFailMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaUIMTK;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaUIMTK;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaUIMTK;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/camera/PanoramaUIMTK$1;->this$0:Lcom/android/camera/PanoramaUIMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/camera/PanoramaUIMTK$1;->this$0:Lcom/android/camera/PanoramaUIMTK;

    iget-object v0, v0, Lcom/android/camera/PanoramaUIMTK;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 252
    return-void
.end method
