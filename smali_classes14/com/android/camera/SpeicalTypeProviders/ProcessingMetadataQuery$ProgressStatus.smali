.class public final enum Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;
.super Ljava/lang/Enum;
.source "ProcessingMetadataQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

.field public static final enum DETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

.field public static final enum INDETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;


# instance fields
.field private final identifier:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 36
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    const-string v1, "INDETERMINATE"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    .line 41
    new-instance v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    const-string v1, "DETERMINATE"

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    .line 32
    new-array v0, v4, [Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->$VALUES:[Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "identifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->identifier:I

    .line 47
    return-void
.end method

.method public static fromIdentifier(I)Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;
    .locals 1
    .param p0, "identifier"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    invoke-virtual {v0}, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->getIdentifier()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 55
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->DETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->INDETERMINATE:Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->$VALUES:[Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    invoke-virtual {v0}, [Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;

    return-object v0
.end method


# virtual methods
.method public getIdentifier()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/SpeicalTypeProviders/ProcessingMetadataQuery$ProgressStatus;->identifier:I

    return v0
.end method
