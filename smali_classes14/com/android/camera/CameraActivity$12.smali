.class Lcom/android/camera/CameraActivity$12;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraPreviewDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity;->setupOneShotPreviewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/android/camera/CameraActivity$12;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/camera/CameraActivity$12;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$3200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/CameraModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraModule;->onPreviewInitialDataReceived()V

    .line 1794
    iget-object v0, p0, Lcom/android/camera/CameraActivity$12;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->onNewPreviewFrame()V

    .line 1795
    return-void
.end method
