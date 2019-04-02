.class Lcom/laifeng/sopcastsdk/video/MyRecorder$1;
.super Ljava/lang/Object;
.source "MyRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/video/MyRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/video/MyRecorder;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/video/MyRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/video/MyRecorder;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder$1;->this$0:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/MyRecorder$1;->this$0:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->access$000(Lcom/laifeng/sopcastsdk/video/MyRecorder;)V

    .line 89
    return-void
.end method
