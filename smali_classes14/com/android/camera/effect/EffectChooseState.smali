.class public final enum Lcom/android/camera/effect/EffectChooseState;
.super Ljava/lang/Enum;
.source "EffectChooseState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/effect/EffectChooseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/effect/EffectChooseState;

.field public static final enum ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

.field public static final enum LIGHTEN:Lcom/android/camera/effect/EffectChooseState;

.field public static final enum NONE:Lcom/android/camera/effect/EffectChooseState;

.field public static final enum STICKER:Lcom/android/camera/effect/EffectChooseState;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/android/camera/effect/EffectChooseState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/effect/EffectChooseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    new-instance v0, Lcom/android/camera/effect/EffectChooseState;

    const-string v1, "STICKER"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/camera/effect/EffectChooseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    new-instance v0, Lcom/android/camera/effect/EffectChooseState;

    const-string v1, "ANIMOJI"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/camera/effect/EffectChooseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    new-instance v0, Lcom/android/camera/effect/EffectChooseState;

    const-string v1, "LIGHTEN"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/camera/effect/EffectChooseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/effect/EffectChooseState;->LIGHTEN:Lcom/android/camera/effect/EffectChooseState;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/effect/EffectChooseState;

    sget-object v1, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/effect/EffectChooseState;->LIGHTEN:Lcom/android/camera/effect/EffectChooseState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/effect/EffectChooseState;->$VALUES:[Lcom/android/camera/effect/EffectChooseState;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/android/camera/effect/EffectChooseState;->mValue:I

    .line 21
    return-void
.end method

.method public static fromValue(I)Lcom/android/camera/effect/EffectChooseState;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 49
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    goto :goto_0

    .line 45
    :pswitch_1
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->ANIMOJI:Lcom/android/camera/effect/EffectChooseState;

    goto :goto_0

    .line 47
    :pswitch_2
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->LIGHTEN:Lcom/android/camera/effect/EffectChooseState;

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static fromValue(Landroid/content/Context;IZLcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/effect/EffectChooseState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I
    .param p2, "isFrontCameraFacing"    # Z
    .param p3, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 53
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 75
    :goto_0
    return-object v2

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    .local v1, "keys_res_id":I
    invoke-static {p3}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const v1, 0x7f0d00ac

    .line 70
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "allowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    invoke-static {p1}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v2

    goto :goto_0

    .line 64
    .end local v0    # "allowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 65
    const v1, 0x7f0d00af

    goto :goto_1

    .line 67
    :cond_2
    const v1, 0x7f0d00be

    goto :goto_1

    .line 75
    .restart local v0    # "allowList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v2, Lcom/android/camera/effect/EffectChooseState;->STICKER:Lcom/android/camera/effect/EffectChooseState;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/effect/EffectChooseState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/android/camera/effect/EffectChooseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectChooseState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/effect/EffectChooseState;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->$VALUES:[Lcom/android/camera/effect/EffectChooseState;

    invoke-virtual {v0}, [Lcom/android/camera/effect/EffectChooseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/EffectChooseState;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/effect/EffectChooseState;->mValue:I

    packed-switch v0, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    const-string v0, "pref_camera_sticker_key"

    goto :goto_0

    .line 32
    :pswitch_1
    const-string v0, "pref_camera_animoji_key"

    goto :goto_0

    .line 34
    :pswitch_2
    const-string v0, "pref_camera_portrait_key"

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/camera/effect/EffectChooseState;->mValue:I

    return v0
.end method
