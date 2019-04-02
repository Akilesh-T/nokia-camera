.class public final enum Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;
.super Ljava/lang/Enum;
.source "ArcsoftPicZoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thirdparty/arcsoft/ArcsoftPicZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

.field public static final enum DC_COLOR:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

.field public static final enum DC_MONO:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

.field public static final enum NORMAL:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    const-string v1, "DC_COLOR"

    invoke-direct {v0, v1, v2, v2}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->DC_COLOR:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    const-string v1, "DC_MONO"

    invoke-direct {v0, v1, v3, v3}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->DC_MONO:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    new-instance v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4, v4}, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->NORMAL:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->DC_COLOR:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->DC_MONO:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->NORMAL:Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->$VALUES:[Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->value:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->$VALUES:[Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    invoke-virtual {v0}, [Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/thirdparty/arcsoft/ArcsoftPicZoom$ImageType;->value:I

    return v0
.end method
