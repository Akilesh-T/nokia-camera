.class final enum Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;
.super Ljava/lang/Enum;
.source "ArcsoftHDR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/ArcsoftHDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HDR_PARAMETER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

.field public static final enum BRIGHTNESS:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

.field public static final enum PERFORMANCE:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

.field public static final enum SATURATION:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

.field public static final enum TONE_LENGTH:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    const-string v1, "TONE_LENGTH"

    invoke-direct {v0, v1, v2}, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->TONE_LENGTH:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    .line 31
    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    const-string v1, "BRIGHTNESS"

    invoke-direct {v0, v1, v3}, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->BRIGHTNESS:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    .line 32
    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    const-string v1, "SATURATION"

    invoke-direct {v0, v1, v4}, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->SATURATION:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    .line 33
    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    const-string v1, "PERFORMANCE"

    invoke-direct {v0, v1, v5}, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->PERFORMANCE:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->TONE_LENGTH:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    aput-object v1, v0, v2

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->BRIGHTNESS:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    aput-object v1, v0, v3

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->SATURATION:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    aput-object v1, v0, v4

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->PERFORMANCE:Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    aput-object v1, v0, v5

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->$VALUES:[Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    return-object v0
.end method

.method public static values()[Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->$VALUES:[Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    invoke-virtual {v0}, [Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thirdparty/arcsoft/ArcsoftHDR$HDR_PARAMETER;

    return-object v0
.end method
