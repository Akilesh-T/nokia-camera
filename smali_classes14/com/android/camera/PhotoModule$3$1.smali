.class Lcom/android/camera/PhotoModule$3$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule$3;->onBurstPictureTaken([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/PhotoModule$3;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/PhotoModule$3;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/camera/PhotoModule$3$1;->this$1:Lcom/android/camera/PhotoModule$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3$1;->this$1:Lcom/android/camera/PhotoModule$3;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PhotoModule$3$1;->this$1:Lcom/android/camera/PhotoModule$3;

    iget-object v1, v1, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v1}, Lcom/android/camera/PhotoModule;->access$1900(Lcom/android/camera/PhotoModule;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 368
    iget-object v0, p0, Lcom/android/camera/PhotoModule$3$1;->this$1:Lcom/android/camera/PhotoModule$3;

    iget-object v0, v0, Lcom/android/camera/PhotoModule$3;->this$0:Lcom/android/camera/PhotoModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 369
    return-void
.end method
