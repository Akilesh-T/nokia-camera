.class Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;
.super Ljava/lang/Object;
.source "AnimojiEffectEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->onPreviewFrame([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    iput-object p2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-static {v0}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->access$500(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)Lcom/megvii/animojisdk/AnimojiApi;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;->val$data:[B

    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->access$200(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-static {v3}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->access$300(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-static {v4}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->access$400(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/megvii/animojisdk/AnimojiApi;->detect([BIII)I

    .line 110
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->access$602(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;Z)Z

    .line 111
    return-void
.end method
