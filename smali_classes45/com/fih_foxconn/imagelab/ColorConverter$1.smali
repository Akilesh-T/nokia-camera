.class synthetic Lcom/fih_foxconn/imagelab/ColorConverter$1;
.super Ljava/lang/Object;
.source "ColorConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/imagelab/ColorConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fih_foxconn$imagelab$ColorConverter$ImageFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->values()[Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$1;->$SwitchMap$com$fih_foxconn$imagelab$ColorConverter$ImageFormat:[I

    :try_start_0
    sget-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$1;->$SwitchMap$com$fih_foxconn$imagelab$ColorConverter$ImageFormat:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->NV21:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$1;->$SwitchMap$com$fih_foxconn$imagelab$ColorConverter$ImageFormat:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->NV12:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$1;->$SwitchMap$com$fih_foxconn$imagelab$ColorConverter$ImageFormat:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->ARGB:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
