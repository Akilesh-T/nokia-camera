.class public final enum Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;
.super Ljava/lang/Enum;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceNaturalOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

.field public static final enum LANDSCAPE:Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

.field public static final enum PORTRAIT:Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;


# instance fields
.field private final mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 10
    new-instance v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->PORTRAIT:Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    .line 11
    new-instance v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->LANDSCAPE:Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    .line 9
    new-array v0, v4, [Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->PORTRAIT:Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->LANDSCAPE:Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->$VALUES:[Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->mOrientation:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->$VALUES:[Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    invoke-virtual {v0}, [Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/app/OrientationManager$DeviceNaturalOrientation;

    return-object v0
.end method
