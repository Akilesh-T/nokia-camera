.class public final enum Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
.super Ljava/lang/Enum;
.source "UserBufferTensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/UserBufferTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Encoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

.field public static final enum FLOAT:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

.field public static final enum TF8:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

.field public static final enum UNKNOWN:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

.field public static final enum UNSIGNED8BIT:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->UNKNOWN:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    .line 31
    new-instance v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v4, v4}, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->FLOAT:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    .line 32
    new-instance v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    const-string v1, "UNSIGNED8BIT"

    invoke-direct {v0, v1, v5, v5}, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->UNSIGNED8BIT:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    .line 33
    new-instance v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    const-string v1, "TF8"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v6, v2}, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->TF8:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    sget-object v1, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->UNKNOWN:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->FLOAT:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->UNSIGNED8BIT:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->TF8:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->$VALUES:[Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->ordinal:I

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->$VALUES:[Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    return-object v0
.end method
