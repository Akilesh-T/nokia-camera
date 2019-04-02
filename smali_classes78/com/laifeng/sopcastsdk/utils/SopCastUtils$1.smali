.class final Lcom/laifeng/sopcastsdk/utils/SopCastUtils$1;
.super Ljava/lang/Object;
.source "SopCastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/utils/SopCastUtils;->processNotUI(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$processor:Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/utils/SopCastUtils$1;->val$processor:Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/SopCastUtils$1;->val$processor:Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;->process()V

    .line 28
    return-void
.end method
