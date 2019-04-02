.class final enum Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;
.super Ljava/lang/Enum;
.source "PanoramaUIMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PanoramaUIMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IndicatorFlashState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

.field public static final enum ALWAYS:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

.field public static final enum FLASH_QUICK:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

.field public static final enum FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

.field public static final enum UNKNOWN:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    const-string v1, "FLASH_SLOW"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    .line 130
    new-instance v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    const-string v1, "FLASH_QUICK"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_QUICK:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    .line 131
    new-instance v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->ALWAYS:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    .line 132
    new-instance v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->UNKNOWN:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    sget-object v1, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_SLOW:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->FLASH_QUICK:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->ALWAYS:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->UNKNOWN:Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->$VALUES:[Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

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
    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    const-class v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->$VALUES:[Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    invoke-virtual {v0}, [Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/PanoramaUIMTK$IndicatorFlashState;

    return-object v0
.end method
