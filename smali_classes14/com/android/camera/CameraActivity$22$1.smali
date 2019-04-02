.class Lcom/android/camera/CameraActivity$22$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraActivity$22;

.field final synthetic val$guard:Lcom/android/camera/stats/profiler/Profile;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity$22;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/CameraActivity$22;

    .prologue
    .line 3113
    iput-object p1, p0, Lcom/android/camera/CameraActivity$22$1;->this$1:Lcom/android/camera/CameraActivity$22;

    iput-object p2, p0, Lcom/android/camera/CameraActivity$22$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22$1;->this$1:Lcom/android/camera/CameraActivity$22;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3125
    :goto_0
    return-void

    .line 3117
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22$1;->this$1:Lcom/android/camera/CameraActivity$22;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/OrientationManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManagerImpl;->resume()V

    .line 3118
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "mOrientationManager resume"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3120
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22$1;->this$1:Lcom/android/camera/CameraActivity$22;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/OrientationManagerImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3121
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22$1;->this$1:Lcom/android/camera/CameraActivity$22;

    iget-object v0, v0, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/CameraActivity;->access$5000(Lcom/android/camera/CameraActivity;)Lcom/android/camera/app/OrientationManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraActivity$22$1;->this$1:Lcom/android/camera/CameraActivity$22;

    iget-object v1, v1, Lcom/android/camera/CameraActivity$22;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/OrientationManagerImpl;->addOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 3123
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraActivity$22$1;->val$guard:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "add OnOrientationChange Listener"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto :goto_0
.end method
