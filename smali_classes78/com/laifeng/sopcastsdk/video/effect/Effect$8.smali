.class Lcom/laifeng/sopcastsdk/video/effect/Effect$8;
.super Ljava/lang/Object;
.source "Effect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laifeng/sopcastsdk/video/effect/Effect;->setUniformMatrix3f(I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laifeng/sopcastsdk/video/effect/Effect;

.field final synthetic val$location:I

.field final synthetic val$matrix:[F


# direct methods
.method constructor <init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;I[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/laifeng/sopcastsdk/video/effect/Effect;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect$8;->this$0:Lcom/laifeng/sopcastsdk/video/effect/Effect;

    iput p2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect$8;->val$location:I

    iput-object p3, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect$8;->val$matrix:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect$8;->val$location:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect$8;->val$matrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 279
    return-void
.end method
