.class Lcom/laifeng/sopcastsdk/controller/StreamController$3;
.super Ljava/lang/Object;
.source "StreamController.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/controller/StreamController;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/controller/StreamController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/controller/StreamController;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$3;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$3;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$300(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/controller/audio/IAudioController;->pause()V

    .line 97
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/controller/StreamController$3;->this$0:Lcom/laifeng/sopcastsdk/controller/StreamController;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/controller/StreamController;->access$200(Lcom/laifeng/sopcastsdk/controller/StreamController;)Lcom/laifeng/sopcastsdk/controller/video/IVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/controller/video/IVideoController;->pause()V

    .line 98
    return-void
.end method
