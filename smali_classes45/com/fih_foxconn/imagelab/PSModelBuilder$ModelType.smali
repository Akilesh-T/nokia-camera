.class public final enum Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
.super Ljava/lang/Enum;
.source "PSModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/imagelab/PSModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

.field public static final enum FAST:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

.field public static final enum NORMAL:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->NORMAL:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 36
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    const-string v1, "FAST"

    invoke-direct {v0, v1, v3, v3}, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->FAST:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->NORMAL:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->FAST:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->$VALUES:[Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->ordinal:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    return-object v0
.end method

.method public static values()[Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->$VALUES:[Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    invoke-virtual {v0}, [Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    return-object v0
.end method
