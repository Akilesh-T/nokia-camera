.class public final enum Lcom/android/camera/opengl/ImageSource;
.super Ljava/lang/Enum;
.source "ImageSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/opengl/ImageSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/opengl/ImageSource;

.field public static final enum MAIN:Lcom/android/camera/opengl/ImageSource;

.field public static final enum SLAVE:Lcom/android/camera/opengl/ImageSource;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/android/camera/opengl/ImageSource;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/opengl/ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    new-instance v0, Lcom/android/camera/opengl/ImageSource;

    const-string v1, "SLAVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/camera/opengl/ImageSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/opengl/ImageSource;->SLAVE:Lcom/android/camera/opengl/ImageSource;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/opengl/ImageSource;

    sget-object v1, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/opengl/ImageSource;->SLAVE:Lcom/android/camera/opengl/ImageSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/opengl/ImageSource;->$VALUES:[Lcom/android/camera/opengl/ImageSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/android/camera/opengl/ImageSource;->value:I

    .line 15
    return-void
.end method

.method public static fromFlag(I)Lcom/google/common/base/Optional;
    .locals 1
    .param p0, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/opengl/ImageSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    packed-switch p0, :pswitch_data_0

    .line 25
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->SLAVE:Lcom/android/camera/opengl/ImageSource;

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromValue(I)Lcom/android/camera/opengl/ImageSource;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    goto :goto_0

    .line 34
    :pswitch_1
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->SLAVE:Lcom/android/camera/opengl/ImageSource;

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/opengl/ImageSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/android/camera/opengl/ImageSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/opengl/ImageSource;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/opengl/ImageSource;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->$VALUES:[Lcom/android/camera/opengl/ImageSource;

    invoke-virtual {v0}, [Lcom/android/camera/opengl/ImageSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/opengl/ImageSource;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/android/camera/opengl/ImageSource;->value:I

    return v0
.end method
