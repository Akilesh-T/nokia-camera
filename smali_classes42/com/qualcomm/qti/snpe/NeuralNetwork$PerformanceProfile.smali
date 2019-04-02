.class public final enum Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;
.super Ljava/lang/Enum;
.source "NeuralNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/NeuralNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PerformanceProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum BALANCED:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum DEFAULT:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum POWER_SAVER:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum SUSTAINED_HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum SYSTEM_SETTINGS:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->DEFAULT:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 62
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v1, "BALANCED"

    invoke-direct {v0, v1, v4, v3}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->BALANCED:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 63
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v1, "HIGH_PERFORMANCE"

    invoke-direct {v0, v1, v5, v4}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 64
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v1, "POWER_SAVER"

    invoke-direct {v0, v1, v6, v5}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->POWER_SAVER:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 65
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v1, "SYSTEM_SETTINGS"

    invoke-direct {v0, v1, v7, v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->SYSTEM_SETTINGS:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 66
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v1, "SUSTAINED_HIGH_PERFORMANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->SUSTAINED_HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->DEFAULT:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->BALANCED:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->POWER_SAVER:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->SYSTEM_SETTINGS:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->SUSTAINED_HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->ordinal:I

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    return-object v0
.end method
