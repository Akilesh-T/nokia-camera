.class Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;
.super Ljava/lang/Object;
.source "StickerEffectEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->onPreviewFrame([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    iput-object p2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    invoke-static {v1}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->access$300(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->access$400(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/opengl/util/ConUtil;->getEffectOrientation(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->access$202(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;I)I

    .line 96
    new-instance v11, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;

    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;->val$data:[B

    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    invoke-static {v1}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->access$500(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    invoke-static {v2}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->access$600(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I

    move-result v2

    invoke-direct {v11, v0, v1, v2}, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;-><init>([BII)V

    .line 97
    .local v11, "scaler":Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v0

    iget-object v1, v11, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaledImage:[B

    iget v2, v11, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaleFactor:I

    int-to-double v2, v2

    iget v4, v11, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaleFactor:I

    int-to-double v4, v4

    iget v6, v11, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaledWidth:I

    iget v7, v11, Lcom/android/camera/opengl/effect/sticker/util/UV420Scaler;->scaledHeight:I

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;->this$0:Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    invoke-static {v9}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->access$200(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeDetectFaceOrientation([BDDIIII)I

    move-result v10

    .line 98
    .local v10, "code":I
    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectFace(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method
