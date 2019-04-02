.class public final enum Lcom/pedro/encoder/input/video/EffectManager;
.super Ljava/lang/Enum;
.source "EffectManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pedro/encoder/input/video/EffectManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pedro/encoder/input/video/EffectManager;

.field public static final enum AQUA:Lcom/pedro/encoder/input/video/EffectManager;

.field public static final enum CLEAR:Lcom/pedro/encoder/input/video/EffectManager;

.field public static final enum GREYSCALE:Lcom/pedro/encoder/input/video/EffectManager;

.field public static final enum NEGATIVE:Lcom/pedro/encoder/input/video/EffectManager;

.field public static final enum POSTERIZE:Lcom/pedro/encoder/input/video/EffectManager;

.field public static final enum SEPIA:Lcom/pedro/encoder/input/video/EffectManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/pedro/encoder/input/video/EffectManager;

    const-string v1, "CLEAR"

    invoke-direct {v0, v1, v3}, Lcom/pedro/encoder/input/video/EffectManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/input/video/EffectManager;->CLEAR:Lcom/pedro/encoder/input/video/EffectManager;

    new-instance v0, Lcom/pedro/encoder/input/video/EffectManager;

    const-string v1, "GREYSCALE"

    invoke-direct {v0, v1, v4}, Lcom/pedro/encoder/input/video/EffectManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/input/video/EffectManager;->GREYSCALE:Lcom/pedro/encoder/input/video/EffectManager;

    new-instance v0, Lcom/pedro/encoder/input/video/EffectManager;

    const-string v1, "SEPIA"

    invoke-direct {v0, v1, v5}, Lcom/pedro/encoder/input/video/EffectManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/input/video/EffectManager;->SEPIA:Lcom/pedro/encoder/input/video/EffectManager;

    new-instance v0, Lcom/pedro/encoder/input/video/EffectManager;

    const-string v1, "NEGATIVE"

    invoke-direct {v0, v1, v6}, Lcom/pedro/encoder/input/video/EffectManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/input/video/EffectManager;->NEGATIVE:Lcom/pedro/encoder/input/video/EffectManager;

    new-instance v0, Lcom/pedro/encoder/input/video/EffectManager;

    const-string v1, "AQUA"

    invoke-direct {v0, v1, v7}, Lcom/pedro/encoder/input/video/EffectManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/input/video/EffectManager;->AQUA:Lcom/pedro/encoder/input/video/EffectManager;

    new-instance v0, Lcom/pedro/encoder/input/video/EffectManager;

    const-string v1, "POSTERIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/input/video/EffectManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/input/video/EffectManager;->POSTERIZE:Lcom/pedro/encoder/input/video/EffectManager;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pedro/encoder/input/video/EffectManager;

    sget-object v1, Lcom/pedro/encoder/input/video/EffectManager;->CLEAR:Lcom/pedro/encoder/input/video/EffectManager;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pedro/encoder/input/video/EffectManager;->GREYSCALE:Lcom/pedro/encoder/input/video/EffectManager;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pedro/encoder/input/video/EffectManager;->SEPIA:Lcom/pedro/encoder/input/video/EffectManager;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pedro/encoder/input/video/EffectManager;->NEGATIVE:Lcom/pedro/encoder/input/video/EffectManager;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pedro/encoder/input/video/EffectManager;->AQUA:Lcom/pedro/encoder/input/video/EffectManager;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pedro/encoder/input/video/EffectManager;->POSTERIZE:Lcom/pedro/encoder/input/video/EffectManager;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pedro/encoder/input/video/EffectManager;->$VALUES:[Lcom/pedro/encoder/input/video/EffectManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pedro/encoder/input/video/EffectManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/pedro/encoder/input/video/EffectManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pedro/encoder/input/video/EffectManager;

    return-object v0
.end method

.method public static values()[Lcom/pedro/encoder/input/video/EffectManager;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/pedro/encoder/input/video/EffectManager;->$VALUES:[Lcom/pedro/encoder/input/video/EffectManager;

    invoke-virtual {v0}, [Lcom/pedro/encoder/input/video/EffectManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pedro/encoder/input/video/EffectManager;

    return-object v0
.end method


# virtual methods
.method public getEffect()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/pedro/encoder/input/video/EffectManager$1;->$SwitchMap$com$pedro$encoder$input$video$EffectManager:[I

    invoke-virtual {p0}, Lcom/pedro/encoder/input/video/EffectManager;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 28
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    .line 18
    :pswitch_1
    const-string v0, "mono"

    goto :goto_0

    .line 20
    :pswitch_2
    const-string v0, "sepia"

    goto :goto_0

    .line 22
    :pswitch_3
    const-string v0, "negative"

    goto :goto_0

    .line 24
    :pswitch_4
    const-string v0, "aqua"

    goto :goto_0

    .line 26
    :pswitch_5
    const-string v0, "posterize"

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
