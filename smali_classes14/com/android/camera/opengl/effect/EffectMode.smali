.class public final enum Lcom/android/camera/opengl/effect/EffectMode;
.super Ljava/lang/Enum;
.source "EffectMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/opengl/effect/EffectMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/opengl/effect/EffectMode;

.field public static final enum ANIMOJI:Lcom/android/camera/opengl/effect/EffectMode;

.field public static final enum LIGHTEN:Lcom/android/camera/opengl/effect/EffectMode;

.field public static final enum NONE:Lcom/android/camera/opengl/effect/EffectMode;

.field public static final enum STICKER:Lcom/android/camera/opengl/effect/EffectMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/android/camera/opengl/effect/EffectMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/opengl/effect/EffectMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/effect/EffectMode;->NONE:Lcom/android/camera/opengl/effect/EffectMode;

    new-instance v0, Lcom/android/camera/opengl/effect/EffectMode;

    const-string v1, "STICKER"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/camera/opengl/effect/EffectMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/effect/EffectMode;->STICKER:Lcom/android/camera/opengl/effect/EffectMode;

    new-instance v0, Lcom/android/camera/opengl/effect/EffectMode;

    const-string v1, "ANIMOJI"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/camera/opengl/effect/EffectMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/effect/EffectMode;->ANIMOJI:Lcom/android/camera/opengl/effect/EffectMode;

    new-instance v0, Lcom/android/camera/opengl/effect/EffectMode;

    const-string v1, "LIGHTEN"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/camera/opengl/effect/EffectMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/effect/EffectMode;->LIGHTEN:Lcom/android/camera/opengl/effect/EffectMode;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/opengl/effect/EffectMode;

    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode;->NONE:Lcom/android/camera/opengl/effect/EffectMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode;->STICKER:Lcom/android/camera/opengl/effect/EffectMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode;->ANIMOJI:Lcom/android/camera/opengl/effect/EffectMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode;->LIGHTEN:Lcom/android/camera/opengl/effect/EffectMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/opengl/effect/EffectMode;->$VALUES:[Lcom/android/camera/opengl/effect/EffectMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/android/camera/opengl/effect/EffectMode;->value:I

    .line 19
    return-void
.end method

.method public static fromValue(I)Lcom/android/camera/opengl/effect/EffectMode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 51
    sget-object v0, Lcom/android/camera/opengl/effect/EffectMode;->NONE:Lcom/android/camera/opengl/effect/EffectMode;

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    sget-object v0, Lcom/android/camera/opengl/effect/EffectMode;->NONE:Lcom/android/camera/opengl/effect/EffectMode;

    goto :goto_0

    .line 45
    :pswitch_1
    sget-object v0, Lcom/android/camera/opengl/effect/EffectMode;->STICKER:Lcom/android/camera/opengl/effect/EffectMode;

    goto :goto_0

    .line 47
    :pswitch_2
    sget-object v0, Lcom/android/camera/opengl/effect/EffectMode;->ANIMOJI:Lcom/android/camera/opengl/effect/EffectMode;

    goto :goto_0

    .line 49
    :pswitch_3
    sget-object v0, Lcom/android/camera/opengl/effect/EffectMode;->LIGHTEN:Lcom/android/camera/opengl/effect/EffectMode;

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getKey(Landroid/content/Context;Lcom/android/camera/opengl/effect/EffectMode;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # Lcom/android/camera/opengl/effect/EffectMode;

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_1

    .line 36
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 24
    :cond_1
    if-eqz p1, :cond_0

    .line 26
    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode$1;->$SwitchMap$com$android$camera$opengl$effect$EffectMode:[I

    invoke-virtual {p1}, Lcom/android/camera/opengl/effect/EffectMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 30
    :pswitch_1
    const-string v0, "pref_camera_sticker_key"

    goto :goto_0

    .line 32
    :pswitch_2
    const-string v0, "pref_camera_animoji_key"

    goto :goto_0

    .line 34
    :pswitch_3
    const-string v0, "pref_camera_portrait_key"

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/opengl/effect/EffectMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/android/camera/opengl/effect/EffectMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/opengl/effect/EffectMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/opengl/effect/EffectMode;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/camera/opengl/effect/EffectMode;->$VALUES:[Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v0}, [Lcom/android/camera/opengl/effect/EffectMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/opengl/effect/EffectMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/android/camera/opengl/effect/EffectMode;->value:I

    return v0
.end method
