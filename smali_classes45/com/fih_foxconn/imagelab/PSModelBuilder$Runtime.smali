.class public final enum Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;
.super Ljava/lang/Enum;
.source "PSModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/imagelab/PSModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Runtime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

.field public static final enum CPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

.field public static final enum DSP:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

.field public static final enum GPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

.field public static final enum GPU_FLOAT16:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    const-string v1, "CPU"

    invoke-direct {v0, v1, v2, v2}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->CPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 23
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    const-string v1, "GPU"

    invoke-direct {v0, v1, v3, v3}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->GPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 24
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    const-string v1, "DSP"

    invoke-direct {v0, v1, v4, v4}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->DSP:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 25
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    const-string v1, "GPU_FLOAT16"

    invoke-direct {v0, v1, v5, v5}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->GPU_FLOAT16:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->CPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->GPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->DSP:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->GPU_FLOAT16:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->$VALUES:[Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->ordinal:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    return-object v0
.end method

.method public static values()[Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->$VALUES:[Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    invoke-virtual {v0}, [Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    return-object v0
.end method
