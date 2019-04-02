.class public final enum Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;
.super Ljava/lang/Enum;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManualFocus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

.field public static final enum AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

.field public static final enum INFINITE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

.field public static final enum MACRO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

.field public static final enum MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;


# instance fields
.field private final mSettingsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 366
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    const-string v1, "AUTO"

    const-string v2, "auto"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    const-string v1, "MACRO"

    const-string v2, "macro"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->MACRO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    const-string v1, "INFINITE"

    const-string v2, "infinite"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->INFINITE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    const-string v1, "MANUAL"

    const-string v2, "manual"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    .line 365
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->MACRO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->INFINITE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "settingsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 378
    iput-object p3, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->mSettingsString:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public static decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;
    .locals 3
    .param p0, "setting"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 388
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    .line 395
    :goto_0
    return-object v0

    .line 390
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->MACRO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->MACRO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    goto :goto_0

    .line 392
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->INFINITE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->INFINITE:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    goto :goto_0

    .line 394
    :cond_2
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    invoke-virtual {v0}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->encodeSettingsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->MANUAL:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    goto :goto_0

    .line 398
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid setting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 365
    const-class v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->$VALUES:[Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;

    return-object v0
.end method


# virtual methods
.method public encodeSettingsString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualFocus;->mSettingsString:Ljava/lang/String;

    return-object v0
.end method
