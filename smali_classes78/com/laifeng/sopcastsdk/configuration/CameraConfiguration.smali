.class public final Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;
.super Ljava/lang/Object;
.source "CameraConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;,
        Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;,
        Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;,
        Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;
    }
.end annotation


# static fields
.field public static final DEFAULT_FACING:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

.field public static final DEFAULT_FOCUSMODE:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

.field public static final DEFAULT_FPS:I = 0xf

.field public static final DEFAULT_HEIGHT:I = 0x500

.field public static final DEFAULT_ORIENTATION:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

.field public static final DEFAULT_WIDTH:I = 0x2d0


# instance fields
.field public final facing:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

.field public final focusMode:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

.field public final fps:I

.field public final height:I

.field public final orientation:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;->FRONT:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    sput-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->DEFAULT_FACING:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    .line 17
    sget-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;->PORTRAIT:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    sput-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->DEFAULT_ORIENTATION:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    .line 18
    sget-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;->AUTO:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    sput-object v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->DEFAULT_FOCUSMODE:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    return-void
.end method

.method private constructor <init>(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->access$000(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->height:I

    .line 45
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->access$100(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->width:I

    .line 46
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->access$200(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->facing:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    .line 47
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->access$300(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->fps:I

    .line 48
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->access$400(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->orientation:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    .line 49
    invoke-static {p1}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->access$500(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->focusMode:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;
    .param p2, "x1"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;-><init>(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;)V

    return-void
.end method

.method public static createDefault()Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Builder;->build()Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    move-result-object v0

    return-object v0
.end method
