.class public final enum Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;
.super Ljava/lang/Enum;
.source "BurstManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/BurstManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onBurstPictureTakenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

.field public static final enum FAILED:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

.field public static final enum QUEUE_FULL:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

.field public static final enum SUCCESS:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->SUCCESS:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    .line 118
    new-instance v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->FAILED:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    .line 119
    new-instance v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    const-string v1, "QUEUE_FULL"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->QUEUE_FULL:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    sget-object v1, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->SUCCESS:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->FAILED:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->QUEUE_FULL:Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->$VALUES:[Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

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
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-class v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->$VALUES:[Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    invoke-virtual {v0}, [Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/burst/BurstManager$onBurstPictureTakenState;

    return-object v0
.end method
