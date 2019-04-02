.class public final enum Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;
.super Ljava/lang/Enum;
.source "OZOModeSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OZOModeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CAMERA_FACING"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

.field public static final enum DUAL_SIGHT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

.field public static final enum FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

.field public static final enum REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    const-string v1, "REAR"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    .line 98
    new-instance v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    const-string v1, "FRONT"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    .line 99
    new-instance v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    const-string v1, "DUAL_SIGHT"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->DUAL_SIGHT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    sget-object v1, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->DUAL_SIGHT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->$VALUES:[Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->$VALUES:[Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    invoke-virtual {v0}, [Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    return-object v0
.end method
