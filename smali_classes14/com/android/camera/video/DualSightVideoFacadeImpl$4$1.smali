.class Lcom/android/camera/video/DualSightVideoFacadeImpl$4$1;
.super Ljava/lang/Object;
.source "DualSightVideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/DualSightVideoFacadeImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$4;


# direct methods
.method constructor <init>(Lcom/android/camera/video/DualSightVideoFacadeImpl$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/DualSightVideoFacadeImpl$4;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$4$1;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/camera/video/DualSightVideoFacadeImpl$4$1;->this$1:Lcom/android/camera/video/DualSightVideoFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/DualSightVideoFacadeImpl$4;->this$0:Lcom/android/camera/video/DualSightVideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/DualSightVideoFacadeImpl;->access$1500(Lcom/android/camera/video/DualSightVideoFacadeImpl;)V

    .line 648
    return-void
.end method
