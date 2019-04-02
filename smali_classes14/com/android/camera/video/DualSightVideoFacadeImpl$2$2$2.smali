.class Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$2;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->onInfo(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$2;->this$2:Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2$2;->this$2:Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2$2;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$2;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$2;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$800(Lcom/android/camera/video/DualSightVideoFacadeImpl;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08028e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 364
    return-void
.end method
