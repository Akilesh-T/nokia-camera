.class public final enum Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
.super Ljava/lang/Enum;
.source "PSModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/imagelab/PSModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

.field public static final enum MTK:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

.field public static final enum OTHERS:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

.field public static final enum QCT:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    const-string v1, "QCT"

    invoke-direct {v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->QCT:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 12
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    const-string v1, "MTK"

    invoke-direct {v0, v1, v3, v3}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->MTK:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 13
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v4, v4}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->OTHERS:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->QCT:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->MTK:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->OTHERS:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->$VALUES:[Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->ordinal:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    return-object v0
.end method

.method public static values()[Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->$VALUES:[Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    invoke-virtual {v0}, [Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    return-object v0
.end method
