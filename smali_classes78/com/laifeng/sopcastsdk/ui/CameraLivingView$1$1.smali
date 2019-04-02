.class Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$1;
.super Ljava/lang/Object;
.source "CameraLivingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$1;->this$1:Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$1;->this$1:Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;

    iget-object v0, v0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$100(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;->startSuccess()V

    .line 193
    return-void
.end method
