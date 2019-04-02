.class synthetic Lcom/fih_foxconn/imagelab/PSModelBuilder$1;
.super Ljava/lang/Object;
.source "PSModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/imagelab/PSModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$ModelType:[I

.field static final synthetic $SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Platform:[I

.field static final synthetic $SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Runtime:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->values()[Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Runtime:[I

    :try_start_0
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Runtime:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->GPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Runtime:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->GPU_FLOAT16:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Runtime:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->DSP:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    .line 95
    :goto_2
    invoke-static {}, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->values()[Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$ModelType:[I

    :try_start_3
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$ModelType:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->FAST:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$ModelType:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->NORMAL:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    .line 97
    :goto_4
    invoke-static {}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->values()[Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Platform:[I

    :try_start_5
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Platform:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->QCT:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Platform:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->MTK:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$1;->$SwitchMap$com$fih_foxconn$imagelab$PSModelBuilder$Platform:[I

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->OTHERS:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    .line 95
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    .line 146
    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
