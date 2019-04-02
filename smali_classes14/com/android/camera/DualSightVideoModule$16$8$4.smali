.class Lcom/android/camera/DualSightVideoModule$16$8$4;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16$8;->onReadyForCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightVideoModule$16$8;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16$8;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightVideoModule$16$8;

    .prologue
    .line 2273
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$8$4;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iput-object p2, p0, Lcom/android/camera/DualSightVideoModule$16$8$4;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$4;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$6100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$8$4;->val$state:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule$16$8$4;->this$2:Lcom/android/camera/DualSightVideoModule$16$8;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16$8;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v2, v2, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v2}, Lcom/android/camera/DualSightVideoModule;->access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f080400

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/ButtonManager$ButtonCallback;->onStateChanged(I)V

    .line 2277
    return-void

    .line 2276
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
