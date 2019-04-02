.class Lcom/android/camera/DualSightPhotoModule$15;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 2424
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$15;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$15;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 2428
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$15;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->onStopFaceDetection()V

    .line 2429
    return-void
.end method
