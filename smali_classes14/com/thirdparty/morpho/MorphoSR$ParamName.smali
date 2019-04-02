.class public final enum Lcom/thirdparty/morpho/MorphoSR$ParamName;
.super Ljava/lang/Enum;
.source "MorphoSR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/morpho/MorphoSR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/thirdparty/morpho/MorphoSR$ParamName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/thirdparty/morpho/MorphoSR$ParamName;

.field public static final enum hdr_fmccl_p1:Lcom/thirdparty/morpho/MorphoSR$ParamName;

.field public static final enum hdr_fmccl_p2:Lcom/thirdparty/morpho/MorphoSR$ParamName;

.field public static final enum hdr_fsms:Lcom/thirdparty/morpho/MorphoSR$ParamName;

.field public static final enum hdr_gdsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

.field public static final enum hdr_grsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

.field public static final enum hdr_grt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

.field public static final enum hdr_rrrt:Lcom/thirdparty/morpho/MorphoSR$ParamName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;

    const-string v1, "hdr_fsms"

    invoke-direct {v0, v1, v3}, Lcom/thirdparty/morpho/MorphoSR$ParamName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fsms:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    .line 22
    new-instance v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;

    const-string v1, "hdr_gdsl"

    invoke-direct {v0, v1, v4}, Lcom/thirdparty/morpho/MorphoSR$ParamName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_gdsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    .line 23
    new-instance v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;

    const-string v1, "hdr_grsl"

    invoke-direct {v0, v1, v5}, Lcom/thirdparty/morpho/MorphoSR$ParamName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    .line 24
    new-instance v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;

    const-string v1, "hdr_rrrt"

    invoke-direct {v0, v1, v6}, Lcom/thirdparty/morpho/MorphoSR$ParamName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_rrrt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    .line 25
    new-instance v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;

    const-string v1, "hdr_grt"

    invoke-direct {v0, v1, v7}, Lcom/thirdparty/morpho/MorphoSR$ParamName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    .line 26
    new-instance v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;

    const-string v1, "hdr_fmccl_p1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p1:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    .line 27
    new-instance v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;

    const-string v1, "hdr_fmccl_p2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/thirdparty/morpho/MorphoSR$ParamName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p2:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/thirdparty/morpho/MorphoSR$ParamName;

    sget-object v1, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fsms:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_gdsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grsl:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_rrrt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_grt:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p1:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/thirdparty/morpho/MorphoSR$ParamName;->hdr_fmccl_p2:Lcom/thirdparty/morpho/MorphoSR$ParamName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;->$VALUES:[Lcom/thirdparty/morpho/MorphoSR$ParamName;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thirdparty/morpho/MorphoSR$ParamName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;

    return-object v0
.end method

.method public static values()[Lcom/thirdparty/morpho/MorphoSR$ParamName;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/thirdparty/morpho/MorphoSR$ParamName;->$VALUES:[Lcom/thirdparty/morpho/MorphoSR$ParamName;

    invoke-virtual {v0}, [Lcom/thirdparty/morpho/MorphoSR$ParamName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thirdparty/morpho/MorphoSR$ParamName;

    return-object v0
.end method
