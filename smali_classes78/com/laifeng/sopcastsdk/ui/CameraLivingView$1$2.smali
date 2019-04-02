.class Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$2;
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

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$2;->this$1:Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;

    iput p2, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$2;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$2;->this$1:Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;

    iget-object v0, v0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1;->this$0:Lcom/laifeng/sopcastsdk/ui/CameraLivingView;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView;->access$100(Lcom/laifeng/sopcastsdk/ui/CameraLivingView;)Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;

    move-result-object v0

    iget v1, p0, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$1$2;->val$result:I

    invoke-interface {v0, v1}, Lcom/laifeng/sopcastsdk/ui/CameraLivingView$LivingStartListener;->startError(I)V

    .line 205
    return-void
.end method
