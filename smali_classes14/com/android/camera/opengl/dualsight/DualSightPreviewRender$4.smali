.class synthetic Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;
.super Ljava/lang/Object;
.source "DualSightPreviewRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$opengl$ImageSource:[I

.field static final synthetic $SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

.field static final synthetic $SwitchMap$com$android$camera$opengl$effect$EffectMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 979
    invoke-static {}, Lcom/android/camera/opengl/effect/EffectMode;->values()[Lcom/android/camera/opengl/effect/EffectMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$effect$EffectMode:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$effect$EffectMode:[I

    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode;->STICKER:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/effect/EffectMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$effect$EffectMode:[I

    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode;->ANIMOJI:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/effect/EffectMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$effect$EffectMode:[I

    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode;->LIGHTEN:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/effect/EffectMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$effect$EffectMode:[I

    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode;->NONE:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/effect/EffectMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    .line 750
    :goto_3
    invoke-static {}, Lcom/android/camera/opengl/ImageSource;->values()[Lcom/android/camera/opengl/ImageSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    :try_start_4
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    sget-object v1, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    invoke-virtual {v1}, Lcom/android/camera/opengl/ImageSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    sget-object v1, Lcom/android/camera/opengl/ImageSource;->SLAVE:Lcom/android/camera/opengl/ImageSource;

    invoke-virtual {v1}, Lcom/android/camera/opengl/ImageSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    .line 488
    :goto_5
    invoke-static {}, Lcom/android/camera/opengl/dualsight/DualSightMode;->values()[Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    :try_start_6
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_MAIN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    sget-object v1, Lcom/android/camera/opengl/dualsight/DualSightMode;->NORMAL_SLAVE:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    .line 750
    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    .line 979
    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
