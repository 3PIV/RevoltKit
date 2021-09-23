//
// InvitesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class InvitesAPI {

    /**
     Delete Invite
     
     - parameter invite: (path) Invite Code 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func invitesInviteDelete(invite: String, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        invitesInviteDeleteWithRequestBuilder(invite: invite).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Invite
     - DELETE /invites/:invite
     - Delete an invite by its ID.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter invite: (path) Invite Code 
     - returns: RequestBuilder<Void> 
     */
    open class func invitesInviteDeleteWithRequestBuilder(invite: String) -> RequestBuilder<Void> {
        var localVariablePath = "/invites/:invite"
        let invitePreEscape = "\(APIHelper.mapValueToPathItem(invite))"
        let invitePostEscape = invitePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invite}", with: invitePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Fetch Invite
     
     - parameter invite: (path) Invite Code 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func invitesInviteGet(invite: String, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: RetrievedInviteModel?, _ error: Error?) -> Void)) {
        invitesInviteGetWithRequestBuilder(invite: invite).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Invite
     - GET /invites/:invite
     - Fetch an invite by its ID.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter invite: (path) Invite Code 
     - returns: RequestBuilder<RetrievedInviteModel> 
     */
    open class func invitesInviteGetWithRequestBuilder(invite: String) -> RequestBuilder<RetrievedInviteModel> {
        var localVariablePath = "/invites/:invite"
        let invitePreEscape = "\(APIHelper.mapValueToPathItem(invite))"
        let invitePostEscape = invitePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invite}", with: invitePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RetrievedInviteModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Join Invite
     
     - parameter invite: (path) Invite Code 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func invitesInvitePost(invite: String, apiResponseQueue: DispatchQueue = OpenAPIClient.apiResponseQueue, completion: @escaping ((_ data: InvitesJoinInviteResponseModel?, _ error: Error?) -> Void)) {
        invitesInvitePostWithRequestBuilder(invite: invite).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Join Invite
     - POST /invites/:invite
     - Join an invite by its ID.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter invite: (path) Invite Code 
     - returns: RequestBuilder<InlineResponse2009Model> 
     */
    open class func invitesInvitePostWithRequestBuilder(invite: String) -> RequestBuilder<InvitesJoinInviteResponseModel> {
        var localVariablePath = "/invites/:invite"
        let invitePreEscape = "\(APIHelper.mapValueToPathItem(invite))"
        let invitePostEscape = invitePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{invite}", with: invitePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InvitesJoinInviteResponseModel>.Type = OpenAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
