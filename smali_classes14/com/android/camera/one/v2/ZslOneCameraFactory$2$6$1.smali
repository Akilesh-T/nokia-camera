.class Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6$1;
.super Ljava/lang/Object;
.source "ZslOneCameraFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6$1;->this$2:Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6$1;->this$2:Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;

    iget-object v0, v0, Lcom/android/camera/one/v2/ZslOneCameraFactory$2$6;->val$burstTaker:Lcom/android/camera/burst/BurstTaker;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstTaker;->stopBurst()V

    .line 878
    return-void
.end method
