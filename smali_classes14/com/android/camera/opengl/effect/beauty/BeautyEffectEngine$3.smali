.class Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;
.super Ljava/lang/Object;
.source "BeautyEffectEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->detectFace(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

.field final synthetic val$UBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$VBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$YBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$mAligned64Height:I

.field final synthetic val$mAligned64Width:I


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    iput-object p2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$YBuffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$UBuffer:Ljava/nio/ByteBuffer;

    iput-object p4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$VBuffer:Ljava/nio/ByteBuffer;

    iput p5, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$mAligned64Width:I

    iput p6, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$mAligned64Height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 105
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$YBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$UBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$VBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$mAligned64Width:I

    iget v5, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->val$mAligned64Height:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;->this$0:Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    invoke-static {v7}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->access$400(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeDetectFaceWithNativeBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII)I

    .line 106
    return-void
.end method
