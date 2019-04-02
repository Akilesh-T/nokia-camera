.class public final enum Lcom/android/ex/camera2/portability/CaptureIntent;
.super Ljava/lang/Enum;
.source "CaptureIntent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/CaptureIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum BOKEH:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum BURST:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum DUALSIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum MEGVII:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum PANORAMA:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum PHOTO_UW:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum PICSELFIE:Lcom/android/ex/camera2/portability/CaptureIntent;

.field public static final enum SR:Lcom/android/ex/camera2/portability/CaptureIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "BURST"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->BURST:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "PANORAMA"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->PANORAMA:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "HDR"

    invoke-direct {v0, v1, v6}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "DENOISE"

    invoke-direct {v0, v1, v7}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "LOWLIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "BEAUTY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "BOKEH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->BOKEH:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "DUALSIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->DUALSIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "PICSELFIE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->PICSELFIE:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "MEGVII"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->MEGVII:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "SR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->SR:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    const-string v1, "PHOTO_UW"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/CaptureIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->PHOTO_UW:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 7
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->BURST:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->PANORAMA:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->BOKEH:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->DUALSIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->PICSELFIE:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->MEGVII:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->SR:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->PHOTO_UW:Lcom/android/ex/camera2/portability/CaptureIntent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->$VALUES:[Lcom/android/ex/camera2/portability/CaptureIntent;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->$VALUES:[Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/CaptureIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object v0
.end method
