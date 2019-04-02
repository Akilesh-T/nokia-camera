.class Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder$1;
.super Ljava/lang/Object;
.source "ScreenRecordEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder$1;->this$0:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder$1;->this$0:Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;->access$000(Lcom/laifeng/sopcastsdk/screen/ScreenRecordEncoder;)V

    .line 78
    return-void
.end method
