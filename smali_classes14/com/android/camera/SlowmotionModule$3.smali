.class Lcom/android/camera/SlowmotionModule$3;
.super Ljava/lang/Object;
.source "SlowmotionModule.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowmotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$3;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 2
    .param p1, "focused"    # Z
    .param p2, "camera"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$3;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$400(Lcom/android/camera/SlowmotionModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$3;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$500(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/FocusOverlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/FocusOverlayManager;->onAutoFocus(ZZ)V

    goto :goto_0
.end method
