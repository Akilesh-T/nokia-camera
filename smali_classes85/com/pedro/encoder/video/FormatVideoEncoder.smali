.class public final enum Lcom/pedro/encoder/video/FormatVideoEncoder;
.super Ljava/lang/Enum;
.source "FormatVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pedro/encoder/video/FormatVideoEncoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV420Dynamical:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV420FLEXIBLE:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV420PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV420PACKEDSEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV420PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV420SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV422FLEXIBLE:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV422PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV422PACKEDSEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV422PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV422SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV444FLEXIBLE:Lcom/pedro/encoder/video/FormatVideoEncoder;

.field public static final enum YUV444INTERLEAVED:Lcom/pedro/encoder/video/FormatVideoEncoder;


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
    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV420FLEXIBLE"

    invoke-direct {v0, v1, v3}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420FLEXIBLE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV420PLANAR"

    invoke-direct {v0, v1, v4}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV420SEMIPLANAR"

    invoke-direct {v0, v1, v5}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV420PACKEDPLANAR"

    invoke-direct {v0, v1, v6}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV420PACKEDSEMIPLANAR"

    invoke-direct {v0, v1, v7}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PACKEDSEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 12
    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV422FLEXIBLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422FLEXIBLE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV422PLANAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV422SEMIPLANAR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV422PACKEDPLANAR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV422PACKEDSEMIPLANAR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422PACKEDSEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 13
    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV444FLEXIBLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV444FLEXIBLE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV444INTERLEAVED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV444INTERLEAVED:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 14
    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "SURFACE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 16
    new-instance v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    const-string v1, "YUV420Dynamical"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/pedro/encoder/video/FormatVideoEncoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420Dynamical:Lcom/pedro/encoder/video/FormatVideoEncoder;

    .line 9
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/pedro/encoder/video/FormatVideoEncoder;

    sget-object v1, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420FLEXIBLE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420PACKEDSEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422FLEXIBLE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422PLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422SEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422PACKEDPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV422PACKEDSEMIPLANAR:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV444FLEXIBLE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV444INTERLEAVED:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->SURFACE:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/pedro/encoder/video/FormatVideoEncoder;->YUV420Dynamical:Lcom/pedro/encoder/video/FormatVideoEncoder;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->$VALUES:[Lcom/pedro/encoder/video/FormatVideoEncoder;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pedro/encoder/video/FormatVideoEncoder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pedro/encoder/video/FormatVideoEncoder;

    return-object v0
.end method

.method public static values()[Lcom/pedro/encoder/video/FormatVideoEncoder;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder;->$VALUES:[Lcom/pedro/encoder/video/FormatVideoEncoder;

    invoke-virtual {v0}, [Lcom/pedro/encoder/video/FormatVideoEncoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pedro/encoder/video/FormatVideoEncoder;

    return-object v0
.end method


# virtual methods
.method public getFormatCodec()I
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/pedro/encoder/video/FormatVideoEncoder$1;->$SwitchMap$com$pedro$encoder$video$FormatVideoEncoder:[I

    invoke-virtual {p0}, Lcom/pedro/encoder/video/FormatVideoEncoder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 21
    :pswitch_0
    const v0, 0x7f420888

    goto :goto_0

    .line 23
    :pswitch_1
    const/16 v0, 0x13

    goto :goto_0

    .line 25
    :pswitch_2
    const/16 v0, 0x15

    goto :goto_0

    .line 27
    :pswitch_3
    const/16 v0, 0x14

    goto :goto_0

    .line 29
    :pswitch_4
    const/16 v0, 0x27

    goto :goto_0

    .line 31
    :pswitch_5
    const v0, 0x7f422888

    goto :goto_0

    .line 33
    :pswitch_6
    const/16 v0, 0x16

    goto :goto_0

    .line 35
    :pswitch_7
    const/16 v0, 0x18

    goto :goto_0

    .line 37
    :pswitch_8
    const/16 v0, 0x17

    goto :goto_0

    .line 39
    :pswitch_9
    const/16 v0, 0x28

    goto :goto_0

    .line 41
    :pswitch_a
    const v0, 0x7f444888

    goto :goto_0

    .line 43
    :pswitch_b
    const/16 v0, 0x1d

    goto :goto_0

    .line 45
    :pswitch_c
    const v0, 0x7f000789

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
