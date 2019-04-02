.class public final enum Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;
.super Ljava/lang/Enum;
.source "AbstractPSModelSNPE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedTensorFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

.field public static final enum FLOAT:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

.field public static final enum UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v2}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->FLOAT:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 31
    new-instance v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    const-string v1, "UB_TF8"

    invoke-direct {v0, v1, v3}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    sget-object v1, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->FLOAT:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->$VALUES:[Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    return-object v0
.end method

.method public static values()[Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->$VALUES:[Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    invoke-virtual {v0}, [Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    return-object v0
.end method
