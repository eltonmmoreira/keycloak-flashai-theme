<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "title">
        ${msg("updatePasswordTitle")?no_esc}
    <#elseif section = "header">
        ${msg("updatePasswordTitle")?no_esc}
    <#elseif section = "form">
        <form id="kc-passwd-update-form" class="form update-password ${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <h2 class="titulo-pagina">${msg("definicaoSenha")}</h2>

            <input type="text" readonly value="this is not a login form" style="display: none;">
            <input type="password" readonly value="this is not a login form" style="display: none;">

            <div class="password-container ${properties.kcFormGroupClass!}">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!}">
                        <i class="material-icons mdc-text-field__icon" tabindex="-1" role="button">lock</i>
                        <input required id="password-new" class="mdc-text-field__input ${properties.kcInputClass!}" name="password-new" type="password" autofocus autocomplete="off">
                        <div class="${properties.kcLabelWrapperClass!}">
                            <label for="password-new" class="mdc-floating-label ${properties.kcLabelClass!}">${msg("passwordNew")}</label>
                        </div>
                        <div class="mdc-notched-outline">
                            <svg>
                                <path class="mdc-notched-outline__path"/>
                            </svg>
                        </div>
                        <div class="mdc-notched-outline__idle"></div>
                    </div>
                </div>
            </div>

            <div class="password-container ${properties.kcFormGroupClass!}">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="mdc-text-field mdc-text-field--outlined mdc-text-field--with-leading-icon ${properties.kcLabelClass!}">
                        <i class="material-icons mdc-text-field__icon" tabindex="-1" role="button">lock</i>
                        <input required id="password-confirm" class="mdc-text-field__input ${properties.kcInputClass!}" name="password-confirm" type="password" autocomplete="off">
                        <div class="${properties.kcLabelWrapperClass!}">
                            <label for="password-confirm" class="mdc-floating-label ${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
                        </div>
                        <div class="mdc-notched-outline">
                            <svg>
                                <path class="mdc-notched-outline__path"/>
                            </svg>
                        </div>
                        <div class="mdc-notched-outline__idle"></div>
                    </div>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} row update-password-button-container">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!} col-xs-6 col-sm-8">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                    </div>
                </div>

                <div id="kc-form-buttons" class="col-xs-5 ${properties.kcFormButtonsClass!}">
                    <div class="${properties.kcFormButtonsWrapperClass!}">
                        <button class="mdc-button mdc-button--raised ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!} custom-btn-action" name="login" id="kc-login" type="submit">
                            ${msg("doSubmit")}
                        </button>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>