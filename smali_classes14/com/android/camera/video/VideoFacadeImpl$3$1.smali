.class Lcom/android/camera/video/VideoFacadeImpl$3$1;
.super Ljava/lang/Object;
.source "VideoFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/VideoFacadeImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/VideoFacadeImpl$3;


# direct methods
.method constructor <init>(Lcom/android/camera/video/VideoFacadeImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/VideoFacadeImpl$3;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/camera/video/VideoFacadeImpl$3$1;->this$1:Lcom/android/camera/video/VideoFacadeImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/camera/video/VideoFacadeImpl$3$1;->this$1:Lcom/android/camera/video/VideoFacadeImpl$3;

    iget-object v0, v0, Lcom/android/camera/video/VideoFacadeImpl$3;->this$0:Lcom/android/camera/video/VideoFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/VideoFacadeImpl;->access$1300(Lcom/android/camera/video/VideoFacadeImpl;)V

    .line 634
    return-void
.end method
