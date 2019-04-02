.class Lcom/android/camera/CameraActivity$25$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$25;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$25;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$25;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$25;

    .prologue
    .line 3380
    iput-object p1, p0, Lcom/android/camera/CameraActivity$25$1;->this$1:Lcom/android/camera/CameraActivity$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3383
    iget-object v0, p0, Lcom/android/camera/CameraActivity$25$1;->this$1:Lcom/android/camera/CameraActivity$25;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$25;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$200(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->setLockScreenThumbnail()V

    .line 3384
    return-void
.end method
